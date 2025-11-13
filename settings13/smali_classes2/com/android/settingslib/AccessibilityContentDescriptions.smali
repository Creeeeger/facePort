.class public Lcom/android/settingslib/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field public static final DATA_CONNECTION_STRENGTH:[I

.field public static final ETHERNET_CONNECTION_VALUES:[I

.field public static final NO_CALLING:I

.field public static final PHONE_5LEVEL_SIGNAL_STRENGTH:[I

.field public static final PHONE_SIGNAL_STRENGTH:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I

.field public static final WIFI_NO_CONNECTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 25
    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_phone:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v4, Lcom/android/settingslib/R$string;->accessibility_phone_one_bar:I

    const/4 v5, 0x1

    aput v4, v1, v5

    sget v6, Lcom/android/settingslib/R$string;->accessibility_phone_two_bars:I

    const/4 v7, 0x2

    aput v6, v1, v7

    sget v8, Lcom/android/settingslib/R$string;->accessibility_phone_three_bars:I

    const/4 v9, 0x3

    aput v8, v1, v9

    sget v10, Lcom/android/settingslib/R$string;->accessibility_phone_signal_full:I

    const/4 v11, 0x4

    aput v10, v1, v11

    sput-object v1, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v2, v1, v3

    aput v4, v1, v5

    aput v6, v1, v7

    aput v8, v1, v9

    .line 34
    sget v2, Lcom/android/settingslib/R$string;->accessibility_phone_four_bars:I

    aput v2, v1, v11

    aput v10, v1, v0

    sput-object v1, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_5LEVEL_SIGNAL_STRENGTH:[I

    new-array v1, v0, [I

    .line 44
    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_data:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_data_one_bar:I

    aput v2, v1, v5

    sget v2, Lcom/android/settingslib/R$string;->accessibility_data_two_bars:I

    aput v2, v1, v7

    sget v2, Lcom/android/settingslib/R$string;->accessibility_data_three_bars:I

    aput v2, v1, v9

    sget v2, Lcom/android/settingslib/R$string;->accessibility_data_signal_full:I

    aput v2, v1, v11

    sput-object v1, Lcom/android/settingslib/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v0, [I

    .line 52
    sget v1, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v1, v0, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v2, v0, v5

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v2, v0, v7

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    aput v2, v0, v9

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    aput v2, v0, v11

    sput-object v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 60
    sput v1, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    .line 62
    sget v0, Lcom/android/settingslib/R$string;->accessibility_no_calling:I

    sput v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    new-array v0, v7, [I

    .line 64
    sget v1, Lcom/android/settingslib/R$string;->accessibility_ethernet_disconnected:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->accessibility_ethernet_connected:I

    aput v1, v0, v5

    sput-object v0, Lcom/android/settingslib/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void
.end method
