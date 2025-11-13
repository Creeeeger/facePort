.class public Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;
.super Lcom/android/systemui/statusbar/phone/ui/IconManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mColor:I

.field public mForegroundColor:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/ui/IconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V

    return-void
.end method


# virtual methods
.method public onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mColor:I

    iget p3, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mForegroundColor:I

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(II)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mColor:I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    return-void
.end method

.method public final setTint(II)V
    .locals 4

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mColor:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mForegroundColor:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mColor:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mForegroundColor:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(II)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(II)V

    :cond_2
    return-void
.end method
