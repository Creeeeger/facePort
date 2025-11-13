.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarRotateSuggestion(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPDE1009"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "QPDS1009"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;->this$0:Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const p2, 0x7f13132a

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const p2, 0x7f131329    # 1.95496E38f

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
