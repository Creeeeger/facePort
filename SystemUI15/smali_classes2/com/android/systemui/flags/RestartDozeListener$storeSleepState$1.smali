.class public final Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $sleeping:Z

.field public final synthetic this$0:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RestartDozeListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iput-boolean p2, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->$sleeping:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->settings:Lcom/android/systemui/util/settings/SecureSettings;

    sget-object v1, Lcom/android/systemui/flags/RestartDozeListener;->Companion:Lcom/android/systemui/flags/RestartDozeListener$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/RestartDozeListener;->RESTART_SLEEP_KEY:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/flags/RestartDozeListener$storeSleepState$1;->$sleeping:Z

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putBool(Ljava/lang/String;Z)Z

    return-void
.end method
