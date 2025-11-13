.class public interface abstract Landroid/hardware/radio/network/RegistrationFailCause$$;
.super Ljava/lang/Object;
.source "RegistrationFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/RegistrationFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/RegistrationFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const-class v3, [I

    if-ne v0, v3, :cond_4

    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    invoke-static {v6}, Landroid/hardware/radio/network/RegistrationFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "IMSI_UNKNOWN_IN_HLR"

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "ILLEGAL_MS"

    return-object v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "IMSI_UNKNOWN_IN_VLR"

    return-object v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string v0, "ILLEGAL_ME"

    return-object v0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string v0, "GPRS_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string v0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_NETWORK"

    return-object v0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string v0, "IMPLICITLY_DETACHED"

    return-object v0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string v0, "PLMN_NOT_ALLOWED"

    return-object v0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string v0, "LOCATION_AREA_NOT_ALLOWED"

    return-object v0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string v0, "ROAMING_NOT_ALLOWED"

    return-object v0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object v0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const-string v0, "NO_SUITABLE_CELLS"

    return-object v0

    :cond_e
    if-ne p0, v0, :cond_f

    const-string v0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string v0, "MSC_TEMP_NOT_REACHABLE"

    return-object v0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string v0, "NETWORK_FAILURE"

    return-object v0

    :cond_11
    const/16 v0, 0x14

    if-ne p0, v0, :cond_12

    const-string v0, "MAC_FAILURE"

    return-object v0

    :cond_12
    const/16 v0, 0x15

    if-ne p0, v0, :cond_13

    const-string v0, "SYNC_FAILURE"

    return-object v0

    :cond_13
    const/16 v0, 0x16

    if-ne p0, v0, :cond_14

    const-string v0, "CONGESTION"

    return-object v0

    :cond_14
    const/16 v0, 0x17

    if-ne p0, v0, :cond_15

    const-string v0, "GSM_AUTHENTICATION_UNACCEPTABLE"

    return-object v0

    :cond_15
    const/16 v0, 0x19

    if-ne p0, v0, :cond_16

    const-string v0, "NOT_AUTHORIZED_FOR_THIS_CSG"

    return-object v0

    :cond_16
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_17

    const-string v0, "SMS_PROVIDED_BY_GPRS_IN_ROUTING_AREA"

    return-object v0

    :cond_17
    const/16 v0, 0x20

    if-ne p0, v0, :cond_18

    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    :cond_18
    const/16 v0, 0x21

    if-ne p0, v0, :cond_19

    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    :cond_19
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1a

    const-string v0, "SERVICE_OPTION_TEMPORARILY_OUT_OF_ORDER"

    return-object v0

    :cond_1a
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1b

    const-string v0, "CALL_CANNOT_BE_IDENTIFIED"

    return-object v0

    :cond_1b
    const/16 v0, 0x28

    if-ne p0, v0, :cond_1c

    const-string v0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object v0

    :cond_1c
    const/16 v0, 0x30

    if-ne p0, v0, :cond_1d

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_1"

    return-object v0

    :cond_1d
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1e

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_2"

    return-object v0

    :cond_1e
    const/16 v0, 0x32

    if-ne p0, v0, :cond_1f

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_3"

    return-object v0

    :cond_1f
    const/16 v0, 0x33

    if-ne p0, v0, :cond_20

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_4"

    return-object v0

    :cond_20
    const/16 v0, 0x34

    if-ne p0, v0, :cond_21

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_5"

    return-object v0

    :cond_21
    const/16 v0, 0x35

    if-ne p0, v0, :cond_22

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_6"

    return-object v0

    :cond_22
    const/16 v0, 0x36

    if-ne p0, v0, :cond_23

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_7"

    return-object v0

    :cond_23
    const/16 v0, 0x37

    if-ne p0, v0, :cond_24

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_8"

    return-object v0

    :cond_24
    const/16 v0, 0x38

    if-ne p0, v0, :cond_25

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_9"

    return-object v0

    :cond_25
    const/16 v0, 0x39

    if-ne p0, v0, :cond_26

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_10"

    return-object v0

    :cond_26
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_27

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_11"

    return-object v0

    :cond_27
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_28

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_12"

    return-object v0

    :cond_28
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_29

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_13"

    return-object v0

    :cond_29
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_2a

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_14"

    return-object v0

    :cond_2a
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_2b

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_15"

    return-object v0

    :cond_2b
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_2c

    const-string v0, "RETRY_UPON_ENTRY_INTO_NEW_CELL_16"

    return-object v0

    :cond_2c
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2d

    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    :cond_2d
    const/16 v0, 0x60

    if-ne p0, v0, :cond_2e

    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    :cond_2e
    const/16 v0, 0x61

    if-ne p0, v0, :cond_2f

    const-string v0, "MESSAGE_TYPE_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    :cond_2f
    const/16 v0, 0x62

    if-ne p0, v0, :cond_30

    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :cond_30
    const/16 v0, 0x63

    if-ne p0, v0, :cond_31

    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT_OR_NOT_IMPLEMENTED"

    return-object v0

    :cond_31
    const/16 v0, 0x64

    if-ne p0, v0, :cond_32

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    :cond_32
    const/16 v0, 0x65

    if-ne p0, v0, :cond_33

    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    :cond_33
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_34

    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    :cond_34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
