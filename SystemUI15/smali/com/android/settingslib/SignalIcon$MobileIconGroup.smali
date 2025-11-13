.class public final Lcom/android/settingslib/SignalIcon$MobileIconGroup;
.super Lcom/android/settingslib/SignalIcon$IconGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dataContentDescription:I

.field public final dataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 11

    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_DATA_ACTIVITY_ICONS:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f1300ef

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII[I)V

    iput p2, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    iput p3, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;II)V

    iput-object p4, p0, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    return-void
.end method
