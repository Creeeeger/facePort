.class public abstract Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDateFormat:Ljava/text/DateFormat;

.field public final mLastEvent:I

.field public final mLastEventTime:J

.field public final mPackageName:Ljava/lang/String;

.field public final mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mLastEvent:I

    iput-wide p4, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mLastEventTime:J

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/controlhistory/AbstractControlHistoryItem;->mTimeFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
