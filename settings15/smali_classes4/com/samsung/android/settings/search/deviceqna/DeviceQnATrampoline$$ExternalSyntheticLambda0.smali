.class public final synthetic Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline;

    const p1, 0x7f1425d9

    iput p1, p0, Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline;

    iget p0, p0, Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline$$ExternalSyntheticLambda0;->f$1:I

    sget v1, Lcom/samsung/android/settings/search/deviceqna/DeviceQnATrampoline;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
