.class public Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;
.super Lcom/samsung/android/sdk/command/template/CommandTemplate;
.source "SingleChoiceTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;,
        Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;
    }
.end annotation


# instance fields
.field private mCurrentActiveValue:Ljava/lang/String;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryPrimaryTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntrySecondaryTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    const-string v0, "key_current_active_mode_value"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    const-string v0, "key_entry_primary_title_list"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    const-string v0, "key_entry_secondary_title_list"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    const-string v0, "key_entry_value_list"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    const-string v0, "key_entry_image_list"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    .line 62
    iget-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v2, v3

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_1
    move v4, p1

    .line 67
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    :cond_2
    new-instance v5, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentActiveValue",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "singlechoice"

    .line 31
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    .line 39
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getPrimaryTitle()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getIconResId()I

    move-result v2

    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez v2, :cond_3

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentActiveValue()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    const-string v2, "key_current_active_mode_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    const-string v2, "key_entry_primary_title_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    const-string v2, "key_entry_secondary_title_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    const-string v2, "key_entry_value_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    const-string v1, "key_entry_image_list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method public getTemplateType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method
