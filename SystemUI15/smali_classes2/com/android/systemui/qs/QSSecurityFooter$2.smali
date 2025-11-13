.class public final Lcom/android/systemui/qs/QSSecurityFooter$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconId:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    const v3, 0x7f07110f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f071087

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/systemui/util/ShadowDelegateUtil;->createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
