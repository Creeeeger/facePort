.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

.field public final synthetic val$allowed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->val$allowed:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setCallScreenRotationAllowed(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPDE1012"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->val$allowed:Z

    const-string v2, "QPDS1012"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " callScreen is rotate allowed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$3;->val$allowed:Z

    const-string v1, "RotationLockDetailAdapter"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method
