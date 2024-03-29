import { createMaterialBottomTabNavigator } from '@react-navigation/material-bottom-tabs';
import { NavigationContainer } from '@react-navigation/native';
import HomePage from './screens/HomePage';
import Profile from './screens/Profile';
import Message from './screens/Message';
import Booking from './screens/Booking';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';
import { Entypo } from '@expo/vector-icons';
import Chat from './screens/Chat';
import { StyleSheet, View} from 'react-native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';

const Tab = createMaterialBottomTabNavigator();
const screenOptions = {
  tabBarShowLabel:false,
  headerShown:false,
  tabBarStyle:{
    position: "absolute",
    bottom: 0,
    right: 0,
    left: 0,
    elevation: 0,
    height: 60,
    backgroundColor: "#fff"
  }
}

export default function App() {
  return (
  
    <NavigationContainer>
      <Tab.Navigator screenOptions={screenOptions}>
        <Tab.Screen name="Home" component={HomeScreenWithStackNav}
          options={{
            tabBarIcon: ({focused})=>{
              return(
                <View style={{alignItems:"center", justifyContent:"center"}}>
                <Entypo name="home" size={30} color={focused ? "#0071A5": "#07364B"}/>
              </View>
              )
            }
          }}
        />

        <Tab.Screen name="Booking" component={Booking}
        options={{
          tabBarIcon: ({focused})=>{
            return(
              <View style={{alignItems:"center", justifyContent:"center"}}>
              <Entypo name="calendar" size={30} color={focused ? "#0071A5": "#07364B"} />
            </View>
            )
          }
        }}
        />

        <Tab.Screen name="Message" component={Message}
        options={{
          tabBarIcon: ({focused})=>{
            return(
              <View style={{alignItems:"center", justifyContent:"center"}}>
              <MaterialCommunityIcons name="message-outline" size={30} color={focused ? "#0071A5": "#07364B"} />
            </View>
            )
          }
        }}
        />

        <Tab.Screen name="Profile" component={Profile}
        options={{
          tabBarIcon: ({focused})=>{
            return(
              <View style={{alignItems:"center", justifyContent:"center"}}>
              <MaterialCommunityIcons name="account-outline" size={35} color={focused ? "#0071A5": "#07364B"} />
            </View>
            )
          }
        }}
        />
      </Tab.Navigator>
    </NavigationContainer>
  
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },

  icon:{
    color:'#0071A5'
  }
});

const HomeScreenWithStackNav = () => {
  const Stack = createNativeStackNavigator();
  return (
    <Stack.Navigator initialRouteName='Home' screenOptions={{ headerShown: false }}>
      <Stack.Screen name="HomePage" component={HomePage} />
      <Stack.Screen name="Chat" component={Chat} />

    </Stack.Navigator>
  );
};
