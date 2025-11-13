.class public final Landroid/service/autofill/Field;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Field$Builder;
    }
.end annotation


# instance fields
.field private blacklist mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

.field private blacklist mPresentations:Landroid/service/autofill/Presentations;

.field private blacklist mValue:Landroid/view/autofill/AutofillValue;


# direct methods
.method constructor blacklist <init>(Landroid/view/autofill/AutofillValue;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/service/autofill/Presentations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/Field;->mValue:Landroid/view/autofill/AutofillValue;

    iput-object p2, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iput-object p3, p0, Landroid/service/autofill/Field;->mPresentations:Landroid/service/autofill/Presentations;

    return-void
.end method


# virtual methods
.method public blacklist getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object v0
.end method

.method public whitelist getFilter()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/Field;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iget-object v0, v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    :goto_0
    return-object v0
.end method

.method public whitelist getPresentations()Landroid/service/autofill/Presentations;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Field;->mPresentations:Landroid/service/autofill/Presentations;

    return-object v0
.end method

.method public whitelist getValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Field;->mValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method
