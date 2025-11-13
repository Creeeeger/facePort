.class public final Landroid/service/autofill/Dataset$Builder;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private blacklist mAutofillDatatypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialFillInIntent:Landroid/content/Intent;

.field private greylist-max-o mDestroyed:Z

.field private blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mFieldContent:Landroid/content/ClipData;

.field private blacklist mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFieldToIndexdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/service/autofill/Field;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mId:Ljava/lang/String;

.field private blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private greylist-max-o mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutofillDatatypes(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCredentialFillInIntent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mCredentialFillInIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateFromParcel(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/Dataset$Builder;->createFromParcel(Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/InlinePresentation;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/autofill/Presentations;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, "presentations must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, "presentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-void
.end method

.method private blacklist createFromParcel(Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I
    .locals 3

    const-string v0, "id cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private blacklist setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I
    .locals 3

    const-string v0, "datatype cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/Dataset;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Dataset$Builder;->mDestroyed:Z

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    const-string v2, "at least one of field or datatype must be set"

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_5

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot fill both content and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "when filling content, only one field can be filled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    new-instance v0, Landroid/service/autofill/Dataset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V

    return-object v0
.end method

.method public whitelist setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object p0
.end method

.method public whitelist setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content items cannot contain an Intent: content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    iput-object p2, p0, Landroid/service/autofill/Dataset$Builder;->mFieldContent:Landroid/content/ClipData;

    return-object p0
.end method

.method public blacklist setCredentialFillInIntent(Landroid/content/Intent;)Landroid/service/autofill/Dataset$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mCredentialFillInIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .locals 10

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/autofill/Field;->getPresentations()Landroid/service/autofill/Presentations;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v9}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v9}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v5

    invoke-virtual {v9}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    invoke-virtual {v9}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v1

    move v0, v1

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setField(Ljava/lang/String;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .locals 10

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/Dataset$Builder;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getDatasetFieldFilter()Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/autofill/Field;->getPresentations()Landroid/service/autofill/Presentations;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/Field;->getValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getMenuPresentation()Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v7

    invoke-virtual {v1}, Landroid/service/autofill/Presentations;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    move-result v2

    :goto_0
    iget-object v3, p0, Landroid/service/autofill/Dataset$Builder;->mFieldToIndexdMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setFieldForAllHints(Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;
    .locals 1

    const-string v0, "any"

    invoke-virtual {p0, v0, p1}, Landroid/service/autofill/Dataset$Builder;->setField(Ljava/lang/String;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFieldInlinePresentation(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public whitelist setInlinePresentation(Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "inlinePresentation must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlineTooltipPresentation must be non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/autofill/Dataset$Builder;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iput-object p2, p0, Landroid/service/autofill/Dataset$Builder;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Dataset$Builder;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;)Landroid/service/autofill/Dataset$Builder;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/Dataset$Builder;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Dataset presentation not set on constructor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v8, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v8, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/regex/Pattern;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Dataset$Builder;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/service/autofill/Dataset$Builder;->throwIfDestroyed()V

    const-string/jumbo v0, "presentation cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlinePresentation cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "inlineTooltipPresentation cannot be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v7, p3}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/Dataset$Builder;->setLifeTheUniverseAndEverything(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)I

    return-object p0
.end method
