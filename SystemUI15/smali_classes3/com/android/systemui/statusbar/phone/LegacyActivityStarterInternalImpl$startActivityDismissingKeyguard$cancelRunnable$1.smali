.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz p0, :cond_0

    const/16 v0, -0x60

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_0
    return-void
.end method
