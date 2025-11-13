.class public final Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final entries:Ljava/util/List;

.field public final injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

.field public final page:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Ljava/util/List;Lcom/android/settingslib/spa/framework/common/SettingsEntry;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->entries:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    iget-object v1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->entries:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->entries:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SettingsPageWithEntry(page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", entries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", injectEntry="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->injectEntry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
