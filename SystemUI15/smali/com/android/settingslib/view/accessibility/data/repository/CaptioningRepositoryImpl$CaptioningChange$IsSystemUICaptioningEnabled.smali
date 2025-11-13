.class public final Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange;


# instance fields
.field public final isEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;

    iget-boolean p0, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;->isEnabled:Z

    iget-boolean p1, p1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;->isEnabled:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;->isEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsSystemUICaptioningEnabled(isEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;->isEnabled:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
