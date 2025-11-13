.class public final Lcom/android/settings/AppWidgetLoader$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public mCollator:Ljava/text/Collator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    check-cast p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    iget-object p0, p0, Lcom/android/settings/AppWidgetLoader$1;->mCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
