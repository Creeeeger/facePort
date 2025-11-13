.class public final Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringifyOverrides(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ";"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    iget-object v3, v2, Lcom/android/systemui/log/echo/LogcatEchoOverride;->type:Lcom/android/systemui/log/echo/EchoOverrideType;

    sget-object v4, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "t"

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string v3, "b"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v3, "\\;"

    iget-object v4, v2, Lcom/android/systemui/log/echo/LogcatEchoOverride;->name:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    sget-object v3, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat$WhenMappings;->$EnumSwitchMapping$1:[I

    iget-object v2, v2, Lcom/android/systemui/log/echo/LogcatEchoOverride;->level:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const-string v2, "!"

    goto :goto_2

    :pswitch_1
    const-string v2, "e"

    goto :goto_2

    :pswitch_2
    const-string/jumbo v2, "w"

    goto :goto_2

    :pswitch_3
    const-string v2, "i"

    goto :goto_2

    :pswitch_4
    const-string v2, "d"

    goto :goto_2

    :pswitch_5
    const-string/jumbo v2, "v"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
