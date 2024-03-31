import { View, Text } from "react-native";
import React from "react";
import {
  SimpleLineIcons,
  Fontisto,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { COLORS } from "../constants/theme";
import { HomePage, Message, Profile, Booking, Create } from "../screens";
import { Entypo } from "@expo/vector-icons";
import { Feather } from '@expo/vector-icons';
import { FontAwesome6 } from '@expo/vector-icons';

const Tab = createBottomTabNavigator();

const screenOptions = {
  tabBarShowLabel: false,
  headerShown: false,
  tabBarHideOnKeyboard: true,
  tabBarStyle: {
    position: "abosulte",
    bottom: 0,
    right: 0,
    left: 0,
    elevation: 0,
    height: 60,
    backgrounColor: COLORS.white,
  },
};
const BottomTabNav = () => {
  return (
    <Tab.Navigator screenOptions={screenOptions}>
      <Tab.Screen
        name="Homepage"
        component={HomePage}
        options={{
          tabBarIcon: ({ focused }) => {
            return (
              <SimpleLineIcons
                name="home"
                size={24}
                color={focused ? COLORS.primary : COLORS.black}
              />
            );
          },
        }}
      />

      <Tab.Screen
        name="Booking"
        component={Booking}
        options={{
          tabBarIcon: ({ focused }) => {
            return (
              <Entypo
                name="calendar"
                size={24}
                color={focused ? COLORS.primary : COLORS.black}
              />
            );
          },
        }}
      />

      <Tab.Screen
        name="Create"
        component={Create}

        options={{
          tabBarIcon: ({ focused }) => {
            return (
              <View
                style={{
                  alignItems: "center",
                  justifyContent: "center",
                  backgroundColor: COLORS.primary,
                  borderWidth: 19,
                  borderRadius: 65,
                  borderColor: COLORS.primary,
                }}
              >
                <FontAwesome6 name="add" size={24} color="white" />
              </View>
            );
          },
        }}
      />

      <Tab.Screen
        name="Message"
        component={Message}
        options={{
          tabBarIcon: ({ focused }) => {
            return (
                <Feather name="message-square" 
                size={24} 
                color={focused ? COLORS.primary : COLORS.black}
                />
            );
          },
        }}
      />

      <Tab.Screen
        name="Profile"
        component={Profile}
        options={{
          tabBarIcon: ({ focused }) => {
            return (
              <MaterialCommunityIcons
                name="account"
                size={24}
                color={focused ? COLORS.primary : COLORS.black}
              />
            );
          },
        }}
      />
    </Tab.Navigator>
  );
};
export default BottomTabNav;
