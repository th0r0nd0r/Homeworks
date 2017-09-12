import { createStore, applyMiddleware } from 'redux';
import RootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
  const store = createStore(RootReducer,
    preloadedState,
    applyMiddleware(addLoggingToDispatch)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

const addLoggingToDispatch = (store) => (next) => (action) => {
  console.log('Action received:', action);
  console.log('State pre-dispatch:', store.getState());
  next(action);
  console.log('State post-dispatch', store.getState());
};

export default configureStore;
