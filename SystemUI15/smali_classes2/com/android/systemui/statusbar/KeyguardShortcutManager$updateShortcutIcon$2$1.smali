.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const/16 v4, 0x81

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v4, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v4, v4, p1

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$isMonotoneIconRequired(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)Z

    move-result v3

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->isMonotoneIcon:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v4, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v4, v4, p1

    invoke-static {v3, v1, v0, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$2$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->shortcutsData:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    invoke-static {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->panelDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NameNotFoundException while updating icon : "

    const-string v1, "KeyguardShortcutManager"

    invoke-static {p1, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
