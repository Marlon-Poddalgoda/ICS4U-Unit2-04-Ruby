#!/usr/bin/env ruby

##
# This program adds numbers to an array using OOP.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-17
# frozen_string_literal: true

class MarlonStack
    # Class for MarlonStack

    # initial method
    def initialize
        # properties
        @stack_as_list = Array.new
    end

    # methods
    def push_num(userInput)
        # adds elements to array
        @stack_as_list.push(userInput)
    end

    def clear_method
        # clears elements from array

        # built in error checking
        if @stack_as_list.length > 0
            # clear
            @stack_as_list.clear
        else
            throw Exception
        end
    end

    # getters
    def pop_method
        # returns and removes first element of list

        # built in error checking
        if @stack_as_list.length > 0
            pop_element = @stack_as_list.pop

            return pop_element
        else
            throw Exception
        end
    end

    def peek_method
        # returns first element of list

        # built in error checking
        if @stack_as_list.length > 0
            peek_element = @stack_as_list.last

            return peek_element
        else
            throw Exception
        end
    end

    def show_stack
        # prints list to console

        # built in error checking
        if @stack_as_list.length > 0
            # prints each value to console
            @stack_as_list.each { |value| puts "#{value}" }
        else
            puts "Null."
        end
    end
end
