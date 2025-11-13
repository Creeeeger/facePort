.class public final Lcom/android/settings/development/AppPicker$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AppPicker$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    check-cast p2, Lcom/android/settings/development/AppPicker$MyApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/development/AppPicker$1;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/settings/development/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
