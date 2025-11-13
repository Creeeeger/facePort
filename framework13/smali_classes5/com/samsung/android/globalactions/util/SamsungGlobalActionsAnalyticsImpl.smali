.class public Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsAnalyticsImpl.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;

    .line 7
    return-void
.end method

.method public blacklist sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 11
    return-void
.end method
