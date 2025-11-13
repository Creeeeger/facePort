.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$TemplateBindResult$MarginSet;
    }
.end annotation


# instance fields
.field public final blacklist mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field public final blacklist mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field blacklist mRightIconHeightDp:F

.field blacklist mRightIconVisible:Z

.field blacklist mRightIconWidthDp:F

.field public final blacklist mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setRightIconState(ZFFFF)V
    .locals 3

    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    iput p2, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    iput p3, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, p5, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float v2, p4, p5

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    return-void
.end method
