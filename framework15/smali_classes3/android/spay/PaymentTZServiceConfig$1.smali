.class Landroid/spay/PaymentTZServiceConfig$1;
.super Landroid/spay/IPaymentClient$Stub;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/spay/PaymentTZServiceConfig;


# direct methods
.method constructor blacklist <init>(Landroid/spay/PaymentTZServiceConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/spay/PaymentTZServiceConfig$1;->this$0:Landroid/spay/PaymentTZServiceConfig;

    invoke-direct {p0}, Landroid/spay/IPaymentClient$Stub;-><init>()V

    return-void
.end method
