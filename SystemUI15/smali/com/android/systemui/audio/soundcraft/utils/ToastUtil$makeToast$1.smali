.class public final Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;->$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;->$message:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
