.class Lcom/android/internal/policy/PhoneFallbackEventHandler$UndefinedSettingNames;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneFallbackEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UndefinedSettingNames"
.end annotation


# static fields
.field static final blacklist ENABLE_RESERVE_MAX_MODE:Ljava/lang/String; = "enable_reserve_max_mode"

.field static final blacklist RESERVE_BATTERY_ON:Ljava/lang/String; = "reserve_battery_on"

.field static final blacklist TOP_KEY_ON_LOCKSCREEN:Ljava/lang/String; = "xcover_top_key_on_lockscreen"

.field static final blacklist XCOVER_KEY_ON_LOCKSCREEN:Ljava/lang/String; = "active_key_on_lockscreen"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
