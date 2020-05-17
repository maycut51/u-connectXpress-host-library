BEGIN {
    print "// THIS FILE IS AUTOGENERATED BY findlist.sh"
    print ""
    print "/** \\file"
    print " *  \\brief Automatically generated function prototypes and documentation"
    print " */"
    print ""

}
{
    gsub(/^[ \t]+/,"",$1);
    gsub(/^[ \t]+/,"",$2);
    gsub(/^"/,"",$2);
    gsub(/"$/,"",$2);
    gsub(/^[ \t]+/,"",$3);
    gsub(/^[ \t]+/,"",$4);
    gsub(/^[ \t]+/,"",$5);
    gsub(/[ \t]+$/,"",$5);
    URC=$1
    NAME=$2;
    IDENTIFIER=$3;
    MUSTFINAL=$4;
    CBONOK=$5;

    print ""
    print ""
    print "/** \\typedef ucxhPARSER_urc" IDENTIFIER "Event_t";
    print " * Event generated upon the reception of the URC `+" URC "`";
    print " * \\note Some parts of this documentation is automatically generated.";
    print " * \\urc +" URC;
    print " * \\sa ucxhPARSER_setOn" IDENTIFIER "()";
    print " * \\sa on" URC "_createEvent()";
    print " */";
    print ""
    print "/** \\brief Register the callback to invoke upon reception of the `+" URC "` URC or command response for `" NAME "`";
    print " * The callback is invoked independent of if the URC is received in AT mode or through the EDM AT channel.";
    print " * If no callback is registered, the callback optinally registered with `ucxhPARSER_setOnURCParsed()` will be invoked instead.";
    print " * \\note This function is automatically generated.";
    print " * \\urc " URC;
    print " * \\param [in] callback The callback to invoke upon reception of `+" URC "`";
    print " * \\param [in] pEvent The event passed to the callback";
    print " * \\returns TRUE if registration succeeded, FALSE otherwize.";
    print " * \\sa on" URC "_createEvent()";
    print " * \\sa ucxhPARSER_setOnX" URC "Error()";
    print " * \\sa ucxhPARSER_setOnXXX()";
    print " * \\ingroup autogenerated";
    print " */";
    print "bool ucxhPARSER_setOn" IDENTIFIER "(int (*callback)(ucxhPARSER_urc" IDENTIFIER "Event_t *pEvent));";
    print ""
    print "/** \\brief Register the callback to invoke in case the command `AT+" URC "` for `" NAME "` failed with `ERROR`.";
    print " * The callback is invoked independent of if the URC is received in AT mode or through the EDM AT channel.";
    print " * If no callback is registered, the callback optinally registered with `ucxhPARSER_setOnErrorReceived()` will be invoked instead.";
    print " * \\note This function is automatically generated.";
    print " * \\urc " URC;
    print " * \\cmd AT+" URC;
    print " * \\param [in] callback The callback to invoke upon reception of `ERROR` for `AT+" URC "`";
    print " * \\param [in] _ TBD";
    print " * \\returns TRUE if registration succeeded, FALSE otherwize.";
    print " * \\sa ucxhPARSER_setOnXXXError()";
    print " * \\ingroup autogenerated";
    print " */";
    print "bool ucxhPARSER_setOn" URC "Error(int (*callback)(void *_));";
    print ""
    print "/** \\brief Create a struct ucxhPARSER_urc" IDENTIFIER "Event_t from the parameters in a `+" URC "` URC.";
    print " * Declaration for a function which parses a line to create an event for a URC or reponse to a command request `" IDENTIFIER "`,"
    print " * with the actual URC or command is `" URC "`.";
    print " * After this function has been invoked by the parser, the parser will forward the event to whoever registered itself";
    print " * as listener with the function `\\ref ucxhPARSER_setOn" IDENTIFIER "()`";
    print " * \\note The actual definition is NOT autogenerated, and must fulfill the requirements outlined in \\ref extending."
    print " * \\note All code required to invoke this function is automatically generated.";
    print " * \\param [in] numParams Number of parameters in ppParams, or 0";
    print " * \\param [in] ppParams The parameters, or NULL";
    print " * \\param [out] pEvent The event to be generated by the function";
    print " * \\returns ucxhURC_PARSE_RESULT_OK if parsing succeded, ucxhURC_PARSE_RESULT_NEED_MORE if (at least) another invocation is required, or ucxhURC_PARSE_RESULT_ERROR if unable to parse.";
    print " * \\note Some parts of this documentation is automatically generated.";
    print " * \\urc +" URC;
    print " * \\sa ucxhPARSER_setOn" IDENTIFIER "()";
    print " * \\sa onUUU_createEvent()";
    print " * \\ingroup eventcreation";
    print " */";
    print "ucxhURC_parseResult_t on" URC "_createEvent(uint8_t numParams, const char *ppParams[], ucxhPARSER_urc" IDENTIFIER "Event_t *pEvent);"

}
END {
}