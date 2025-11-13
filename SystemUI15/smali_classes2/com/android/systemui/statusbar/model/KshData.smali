.class public final Lcom/android/systemui/statusbar/model/KshData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mContext:Landroid/content/Context;

.field public mDefaultIcons:Ljava/util/HashMap;

.field public mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

.field public mKshGroups:Ljava/util/List;

.field public final mModifierDrawables:Landroid/util/SparseArray;

.field public final mModifierNames:Landroid/util/SparseArray;

.field public final mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

.field public final mSpecialCharacterDrawables:Landroid/util/SparseArray;

.field public final mSpecialCharacterNames:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/model/KshDataUtils;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/KshDataUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterNames$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterNames$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/model/ModifierNames$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/ModifierNames$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawables$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawables$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawableDescriptions$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/SpecialCharacterDrawableDescriptions$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-class v2, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/model/KshData;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    const v1, 0x7f130aac

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
