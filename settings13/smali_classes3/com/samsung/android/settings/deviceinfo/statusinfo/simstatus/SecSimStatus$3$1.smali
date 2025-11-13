.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3$1;
.super Ljava/lang/Object;
.source "SecSimStatus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3$1;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3$1;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 246
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus$3$1;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method
