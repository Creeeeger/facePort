.class final Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/NetworkProviderCallsSmsController;->getSummary(Ljava/util/List;II)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "subInfo",
        "Landroid/telephony/SubscriptionInfo;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activeSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $defaultSmsSubscriptionId:I

.field final synthetic $defaultVoiceSubscriptionId:I

.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderCallsSmsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/NetworkProviderCallsSmsController;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->this$0:Lcom/android/settings/network/NetworkProviderCallsSmsController;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$activeSubscriptionInfoList:Ljava/util/List;

    iput p3, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$defaultVoiceSubscriptionId:I

    iput p4, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$defaultSmsSubscriptionId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    const-string v0, "subInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->this$0:Lcom/android/settings/network/NetworkProviderCallsSmsController;

    invoke-static {v0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->access$getGetDisplayName$p(Lcom/android/settings/network/NetworkProviderCallsSmsController;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->this$0:Lcom/android/settings/network/NetworkProviderCallsSmsController;

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$activeSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$defaultVoiceSubscriptionId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v6, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->$defaultSmsSubscriptionId:I

    if-ne p1, v6, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->access$getPreferredStatus(Lcom/android/settings/network/NetworkProviderCallsSmsController;IIZZ)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController$getSummary$2;->this$0:Lcom/android/settings/network/NetworkProviderCallsSmsController;

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->access$getMContext$p$s-1738988929(Lcom/android/settings/network/NetworkProviderCallsSmsController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
