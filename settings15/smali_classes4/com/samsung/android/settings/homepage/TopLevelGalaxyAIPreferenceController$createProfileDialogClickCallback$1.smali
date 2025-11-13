.class public final Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController$createProfileDialogClickCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController$createProfileDialogClickCallback$1;->this$0:Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController$createProfileDialogClickCallback$1;->this$0:Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;->access$intelligenceServiceSettingStart(Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;->getMProfileSelectDialog()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/homepage/TopLevelGalaxyAIPreferenceController;->getMProfileSelectDialog()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
