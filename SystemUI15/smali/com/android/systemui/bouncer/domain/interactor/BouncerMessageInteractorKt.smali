.class public abstract Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$defaultMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Ljava/lang/String;Z)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;
    .locals 18

    new-instance v0, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    new-instance v9, Lcom/android/systemui/bouncer/shared/model/Message;

    sget-object v1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->INSTANCE:Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toAuthModel(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v1, p2

    invoke-static {v2, v1}, Lcom/android/systemui/bouncer/shared/model/BouncerMessageStrings;->defaultMessage(Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;Z)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt;->toMessage(Lkotlin/Pair;)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->message:Lcom/android/systemui/bouncer/shared/model/Message;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/bouncer/shared/model/Message;

    const/16 v16, 0xe

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/bouncer/shared/model/Message;Lcom/android/systemui/bouncer/shared/model/Message;)V

    return-object v0
.end method

.method public static final toAuthModel(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel;
    .locals 1

    sget-object v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid security mode!"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$ForgotPassword;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$ForgotPassword;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Swipe;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Swipe;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SKTCarrierLock;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$KNOXGUARD;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$KNOXGUARD;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$RMM;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$RMM;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$FMM;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$FMM;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Permanent;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Permanent;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$AdminLock;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$AdminLock;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SmartcardPIN;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$SmartcardPIN;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Sim;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pin;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Password;

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$Pattern;

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;->INSTANCE:Lcom/android/systemui/authentication/shared/model/AuthenticationMethodModel$None;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final toMessage(Lkotlin/Pair;)Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;
    .locals 18

    new-instance v0, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    new-instance v9, Lcom/android/systemui/bouncer/shared/model/Message;

    invoke-virtual/range {p0 .. p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/android/systemui/bouncer/shared/model/Message;

    invoke-virtual/range {p0 .. p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Integer;

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/bouncer/shared/model/Message;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/ColorStateList;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;-><init>(Lcom/android/systemui/bouncer/shared/model/Message;Lcom/android/systemui/bouncer/shared/model/Message;)V

    return-object v0
.end method
