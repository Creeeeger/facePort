.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final synthetic $shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

.field public final synthetic $this_with:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->context:Landroid/content/Context;

    const v4, 0x7f08069f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v4, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    const p0, 0x7f08069f

    return p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 2

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    move-result p0

    invoke-direct {p1, v1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;-><init>(Landroid/content/Intent;Z)V

    return-object p1
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->appLabel:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
