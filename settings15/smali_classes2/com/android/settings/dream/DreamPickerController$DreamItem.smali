.class public final Lcom/android/settings/dream/DreamPickerController$DreamItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field public final synthetic this$0:Lcom/android/settings/dream/DreamPickerController;


# direct methods
.method public constructor <init>(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->this$0:Lcom/android/settings/dream/DreamPickerController;

    iput-object p2, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->this$0:Lcom/android/settings/dream/DreamPickerController;

    invoke-static {v0}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmAdapter(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settings/dream/DreamAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/dream/DreamAdapter;->mEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmActiveDream(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmActiveDream(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
