.class public final synthetic Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    sget p1, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
