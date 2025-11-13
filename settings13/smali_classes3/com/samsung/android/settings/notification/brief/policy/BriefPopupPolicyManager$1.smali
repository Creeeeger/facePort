.class Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager$1;
.super Ljava/lang/Object;
.source "BriefPopupPolicyManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager$1;->this$0:Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;)I
    .locals 0

    .line 77
    iget p0, p1, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    iget p1, p2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;->category:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    check-cast p1, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    check-cast p2, Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/notification/brief/policy/BriefPopupPolicyManager$1;->compare(Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;Lcom/samsung/android/settings/notification/brief/policy/PolicyInfo;)I

    move-result p0

    return p0
.end method
