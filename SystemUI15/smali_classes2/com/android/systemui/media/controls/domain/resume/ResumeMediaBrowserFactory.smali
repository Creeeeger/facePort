.class public final Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

.field public final mContext:Landroid/content/Context;

.field public final mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    return-void
.end method
