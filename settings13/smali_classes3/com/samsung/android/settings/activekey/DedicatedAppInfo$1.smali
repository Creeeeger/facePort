.class Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;
.super Ljava/lang/Object;
.source "DedicatedAppInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 178
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
