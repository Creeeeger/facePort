.class public final Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/EntryData;


# instance fields
.field public final arguments:Landroid/os/Bundle;

.field public final entryId:Ljava/lang/String;

.field public final isHighlighted:Z


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->fromPage:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->entryId:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->getHighlightEntryId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->isHighlighted:Z

    iput-object p3, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->arguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->arguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getEntryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->entryId:Ljava/lang/String;

    return-object p0
.end method

.method public final isHighlighted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntry$provideLocalEntryData$1$1;->isHighlighted:Z

    return p0
.end method
