.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DB_KEY_BATTERY_ICON:Ljava/lang/String; = "battery_icon"

.field public static final DB_KEY_BATTERY_PERCENT:Ljava/lang/String; = "battery_percent"

.field public static final DB_KEY_DEFAULT_NULL:Ljava/lang/String; = "rotate,headset"

.field public static final DB_KEY_HOME_CARRIER:Ljava/lang/String; = "slimindicator_home_carrier"

.field public static final DB_KEY_LEFT_CLOCK_POSITION:Ljava/lang/String; = "left_clock_position"

.field public static final DB_KEY_LOCK_CARRIER:Ljava/lang/String; = "slimindicator_lock_carrier"

.field public static final DB_KEY_LOCK_MUM:Ljava/lang/String; = "lockscreen_mum"

.field public static final DB_KEY_MIDDLE_CLOCK_POSITION:Ljava/lang/String; = "middle_clock_position"

.field public static final DB_KEY_PANEL_CARRIER:Ljava/lang/String; = "slimindicator_panel_carrier"

.field public static final DB_KEY_RIGHT_CLOCK_POSITION:Ljava/lang/String; = "right_clock_position"

.field public static final DB_KEY_SHOW_AMPM:Ljava/lang/String; = "slimindicator_show_ampm"

.field public static final DB_KEY_SHOW_DATE:Ljava/lang/String; = "slimindicator_show_date"

.field public static final DB_KEY_SHOW_SECONDS:Ljava/lang/String; = "slimindicator_show_seconds"

.field public static final DB_KEY_TWO_PHONE_MODE_ICON:Ljava/lang/String; = "two_phone_mode_icon"

.field public static final ICON_BLACKLIST_SETTING:Ljava/lang/String; = "icon_blacklist"

.field public static final INTENT_ACTION_ICON_BLACKLIST:Ljava/lang/String; = "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

.field public static final INTENT_EXTRA_ICON_BLACKLIST:Ljava/lang/String; = "iconblacklist"

.field public static final VERSION:I = 0x1f40

.field public static final mIconDrawableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIconEnableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIsShowHomeCarrier:Z = true

.field public static final mIsShowLockCarrier:Z = true


# virtual methods
.method public abstract getIsLockCarrier()Z
.end method

.method public abstract getIsShowCarrier()Z
.end method
