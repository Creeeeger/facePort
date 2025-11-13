.class public final Landroid/service/controls/CustomControl$CustomStatefulBuilder;
.super Ljava/lang/Object;
.source "CustomControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/CustomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomStatefulBuilder"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CustomStatefulBuilder"


# instance fields
.field private blacklist mActionIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mAllowBasicActionWhenLocked:Z

.field private blacklist mCustomIconAnimationEndFrame:I

.field private blacklist mCustomIconAnimationJson:Ljava/lang/String;

.field private blacklist mCustomIconAnimationJsonCache:Ljava/lang/String;

.field private blacklist mCustomIconAnimationRepeatCount:I

.field private blacklist mCustomIconAnimationStartFrame:I

.field private blacklist mCustomSound:I

.field private blacklist mCustomStatusIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutType:I

.field private blacklist mOrder:I

.field private blacklist mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mStatusIconType:I

.field private blacklist mStatusTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mUseCustomIconWithoutPadding:Z

.field private blacklist mUseCustomIconWithoutShadowBg:Z

.field private blacklist mUseFullScreenDetailDialog:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 557
    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationStartFrame:I

    .line 564
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationEndFrame:I

    .line 567
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationRepeatCount:I

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusIconType:I

    .line 594
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOrder:I

    .line 601
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mLayoutType:I

    .line 605
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomSound:I

    .line 612
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/controls/CustomControl;)V
    .locals 2
    .param p1, "customControl"    # Landroid/service/controls/CustomControl;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 557
    iput-object v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationStartFrame:I

    .line 564
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationEndFrame:I

    .line 567
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationRepeatCount:I

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusIconType:I

    .line 594
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOrder:I

    .line 601
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mLayoutType:I

    .line 605
    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomSound:I

    .line 616
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationJson(Landroid/service/controls/CustomControl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 617
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 618
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 622
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmActionIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setActionIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 626
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmUseFullScreenDetailDialog(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseFullScreenDetailDialog(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 630
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmAllowBasicActionWhenLocked(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setAllowBasicActionWhenLocked(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 634
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmStatusTextColor(Landroid/service/controls/CustomControl;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setStatusTextColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 635
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmStatusIconType(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setStatusIconType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 639
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 643
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 647
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmOrder(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setOrder(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 651
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomStatusIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomStatusIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 655
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmLayoutType(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 659
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmCustomSound(Landroid/service/controls/CustomControl;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setCustomSound(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 663
    invoke-static {p1}, Landroid/service/controls/CustomControl;->-$$Nest$fgetmOverlayCustomIcon(Landroid/service/controls/CustomControl;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->setOverlayCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;

    .line 665
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/service/controls/CustomControl;
    .locals 2

    .line 789
    new-instance v0, Landroid/service/controls/CustomControl;

    invoke-direct {v0}, Landroid/service/controls/CustomControl;-><init>()V

    .line 792
    .local v0, "customControl":Landroid/service/controls/CustomControl;
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationJson(Landroid/service/controls/CustomControl;Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationJsonCache(Landroid/service/controls/CustomControl;Ljava/lang/String;)V

    .line 794
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationStartFrame:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationStartFrame(Landroid/service/controls/CustomControl;I)V

    .line 795
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationEndFrame:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationEndFrame(Landroid/service/controls/CustomControl;I)V

    .line 796
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationRepeatCount:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomIconAnimationRepeatCount(Landroid/service/controls/CustomControl;I)V

    .line 800
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mActionIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmActionIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V

    .line 804
    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseFullScreenDetailDialog:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmUseFullScreenDetailDialog(Landroid/service/controls/CustomControl;Z)V

    .line 808
    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mAllowBasicActionWhenLocked:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmAllowBasicActionWhenLocked(Landroid/service/controls/CustomControl;Z)V

    .line 812
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusTextColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmStatusTextColor(Landroid/service/controls/CustomControl;Landroid/content/res/ColorStateList;)V

    .line 813
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusIconType:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmStatusIconType(Landroid/service/controls/CustomControl;I)V

    .line 817
    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseCustomIconWithoutShadowBg:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmUseCustomIconWithoutShadowBg(Landroid/service/controls/CustomControl;Z)V

    .line 821
    iget-boolean v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseCustomIconWithoutPadding:Z

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmUseCustomIconWithoutPadding(Landroid/service/controls/CustomControl;Z)V

    .line 825
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOrder:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmOrder(Landroid/service/controls/CustomControl;I)V

    .line 829
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomStatusIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V

    .line 833
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mLayoutType:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmLayoutType(Landroid/service/controls/CustomControl;I)V

    .line 837
    iget v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomSound:I

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmCustomSound(Landroid/service/controls/CustomControl;I)V

    .line 841
    iget-object v1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/service/controls/CustomControl;->-$$Nest$fputmOverlayCustomIcon(Landroid/service/controls/CustomControl;Landroid/graphics/drawable/Icon;)V

    .line 844
    return-object v0
.end method

.method public blacklist setActionIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "actionIcon"    # Landroid/graphics/drawable/Icon;

    .line 697
    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mActionIcon:Landroid/graphics/drawable/Icon;

    .line 698
    return-object p0
.end method

.method public blacklist setAllowBasicActionWhenLocked(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "allowBasicActionWhenLocked"    # Z

    .line 713
    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mAllowBasicActionWhenLocked:Z

    .line 714
    return-object p0
.end method

.method public blacklist setCustomIconAnimationJson(Ljava/lang/String;Ljava/lang/String;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "jsonCache"    # Ljava/lang/String;

    .line 671
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJson:Ljava/lang/String;

    .line 674
    iput-object p2, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationJsonCache:Ljava/lang/String;

    .line 675
    return-object p0
.end method

.method public blacklist setCustomIconAnimationRepeatCount(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "count"    # I

    .line 690
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationRepeatCount:I

    .line 691
    return-object p0
.end method

.method public blacklist setCustomIconAnimationStartAndEndFrame(II)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I

    .line 682
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationStartFrame:I

    .line 683
    iput p2, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomIconAnimationEndFrame:I

    .line 684
    return-object p0
.end method

.method public blacklist setCustomSound(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "customSound"    # I

    .line 776
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomSound:I

    .line 777
    return-object p0
.end method

.method public blacklist setCustomStatusIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 762
    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mCustomStatusIcon:Landroid/graphics/drawable/Icon;

    .line 763
    return-object p0
.end method

.method public blacklist setLayoutType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "type"    # I

    .line 769
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mLayoutType:I

    .line 770
    return-object p0
.end method

.method public blacklist setOrder(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "order"    # I

    .line 755
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOrder:I

    .line 756
    return-object p0
.end method

.method public blacklist setOverlayCustomIcon(Landroid/graphics/drawable/Icon;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "overlayCustomIcon"    # Landroid/graphics/drawable/Icon;

    .line 783
    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mOverlayCustomIcon:Landroid/graphics/drawable/Icon;

    .line 784
    return-object p0
.end method

.method public blacklist setStatusIconType(I)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 2
    .param p1, "statusIconType"    # I

    .line 727
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iput p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusIconType:I

    goto :goto_1

    .line 728
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusIconType:I

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status Icon type unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomStatefulBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_1
    return-object p0
.end method

.method public blacklist setStatusTextColor(Landroid/content/res/ColorStateList;)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "statusTextColor"    # Landroid/content/res/ColorStateList;

    .line 720
    iput-object p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mStatusTextColor:Landroid/content/res/ColorStateList;

    .line 721
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutPadding(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "useCustomIconWithoutPadding"    # Z

    .line 748
    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseCustomIconWithoutPadding:Z

    .line 749
    return-object p0
.end method

.method public blacklist setUseCustomIconWithoutShadowBg(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "useCustomIconWithoutShadowBg"    # Z

    .line 740
    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseCustomIconWithoutShadowBg:Z

    .line 741
    return-object p0
.end method

.method public blacklist setUseFullScreenDetailDialog(Z)Landroid/service/controls/CustomControl$CustomStatefulBuilder;
    .locals 0
    .param p1, "useFullScreenDetailDialog"    # Z

    .line 705
    iput-boolean p1, p0, Landroid/service/controls/CustomControl$CustomStatefulBuilder;->mUseFullScreenDetailDialog:Z

    .line 706
    return-object p0
.end method
