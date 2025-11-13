.class public final Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/settings/notification/zen/ZenRuleInfo;

    check-cast p2, Lcom/android/settings/notification/zen/ZenRuleInfo;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method
