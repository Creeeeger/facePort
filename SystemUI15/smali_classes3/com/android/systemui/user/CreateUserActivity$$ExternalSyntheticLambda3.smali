.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/user/CreateUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/user/CreateUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    sget v0, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
