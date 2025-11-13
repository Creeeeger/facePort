.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;)I
    .locals 0

    .line 677
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;->sCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 672
    check-cast p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    check-cast p2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$8;->compare(Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;)I

    move-result p0

    return p0
.end method
