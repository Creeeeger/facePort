.class public final Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final mCollator:Landroid/icu/text/Collator;


# direct methods
.method public constructor <init>(Landroid/icu/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;->mCollator:Landroid/icu/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    check-cast p2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;->mCollator:Landroid/icu/text/Collator;

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
