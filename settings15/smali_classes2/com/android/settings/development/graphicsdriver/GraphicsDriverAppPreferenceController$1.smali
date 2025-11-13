.class public final Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;

    check-cast p2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
