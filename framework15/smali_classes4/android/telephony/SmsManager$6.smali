.class Landroid/telephony/SmsManager$6;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/SmsManager$6;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$6;->val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SmsManager$6;->this$0:Landroid/telephony/SmsManager;

    iget-object v1, p0, Landroid/telephony/SmsManager$6;->val$resolverResult:Landroid/telephony/SmsManager$SubscriptionResolverResult;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/telephony/SmsManager;->-$$Nest$msendResolverResult(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    return-void
.end method
