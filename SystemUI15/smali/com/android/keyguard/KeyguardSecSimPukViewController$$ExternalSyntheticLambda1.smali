.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateSimIconImage$1()V

    return-void
.end method
