.class public Lcom/android/settingslib/SignalIcon$MobileIconGroup;
.super Lcom/android/settingslib/SignalIcon$IconGroup;
.source "SignalIcon.java"


# instance fields
.field public final dataContentDescription:I

.field public final dataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[I)V
    .locals 11

    .line 115
    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x0

    aget v9, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    .line 125
    iput p2, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 126
    iput p3, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIII)V
    .locals 12

    move-object v11, p0

    .line 98
    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_DATA_ACTIVITY_ICONS:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    move/from16 v0, p10

    .line 108
    iput v0, v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    move/from16 v0, p11

    .line 109
    iput v0, v11, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    return-void
.end method
