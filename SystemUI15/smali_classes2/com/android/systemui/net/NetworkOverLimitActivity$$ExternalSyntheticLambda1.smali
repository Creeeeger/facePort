.class public final synthetic Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/net/NetworkOverLimitActivity;

    sget p1, Lcom/android/systemui/net/NetworkOverLimitActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
