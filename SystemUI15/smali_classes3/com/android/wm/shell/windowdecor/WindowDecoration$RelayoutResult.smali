.class public final Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCaptionHeight:I

.field public mCaptionWidth:I

.field public mCaptionX:I

.field public final mCustomizableCaptionRegion:Landroid/graphics/Region;

.field public mHeight:I

.field public mRootView:Landroid/view/View;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCustomizableCaptionRegion:Landroid/graphics/Region;

    return-void
.end method
