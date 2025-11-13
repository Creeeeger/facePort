.class Lcom/samsung/android/settings/search/provider/TagProvider$1;
.super Ljava/lang/Object;
.source "TagProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/provider/TagProvider;->getAllTagList(Landroid/os/Bundle;)V
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
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/search/provider/TagProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/provider/TagProvider;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagProvider$1;->this$0:Lcom/samsung/android/settings/search/provider/TagProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/TagProvider$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 320
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/search/provider/TagProvider$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/samsung/android/settings/search/provider/TagProvider$1;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
