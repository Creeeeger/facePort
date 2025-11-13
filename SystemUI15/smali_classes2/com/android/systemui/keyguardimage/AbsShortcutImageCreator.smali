.class public abstract Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getShortcutManager()Lcom/android/systemui/statusbar/KeyguardShortcutManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    return-object p0
.end method

.method public final updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutIconSizeValue(Z)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setVisibility(I)V

    :goto_1
    return-void
.end method
