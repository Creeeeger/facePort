.class public final Lcom/android/keyguard/EmergencyButton$Samsung321Task;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->-$$Nest$misSamsung321Enabled(Lcom/android/keyguard/EmergencyButton;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    return-void
.end method
