.class public Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;
.super Ljava/lang/Object;
.source "ZenRuleScheduleHelper.java"


# instance fields
.field private mDayFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleScheduleHelper;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method
