.class public abstract Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v1, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;

    const-string v2, "value"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method
