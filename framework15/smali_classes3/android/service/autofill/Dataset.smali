.class public final Landroid/service/autofill/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Dataset$Builder;,
        Landroid/service/autofill/Dataset$DatasetFieldFilter;,
        Landroid/service/autofill/Dataset$DatasetEligibleReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PICK_REASON_NO_PCC:I = 0x1

.field public static final blacklist PICK_REASON_PCC_DETECTION_ONLY:I = 0x4

.field public static final blacklist PICK_REASON_PCC_DETECTION_PREFERRED_WITH_PROVIDER:I = 0x5

.field public static final blacklist PICK_REASON_PROVIDER_DETECTION_ONLY:I = 0x2

.field public static final blacklist PICK_REASON_PROVIDER_DETECTION_PREFERRED_WITH_PCC:I = 0x3

.field public static final blacklist PICK_REASON_UNKNOWN:I


# instance fields
.field private final greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private final blacklist mAutofillDatatypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialFillInIntent:Landroid/content/Intent;

.field private final blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mEligibleReason:I

.field private final blacklist mFieldContent:Landroid/content/ClipData;

.field private final blacklist mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private final greylist-max-o mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V
    .locals 0

    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/Dataset$1;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$1;-><init>()V

    sput-object v0, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/Dataset$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmCredentialFillInIntent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAutofillDatatypes(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/Dataset;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    iget-object v0, p1, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ClipData;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/service/autofill/InlinePresentation;",
            "Landroid/service/autofill/InlinePresentation;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    move-object/from16 v7, p8

    iput-object v7, v0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    move-object/from16 v8, p7

    iput-object v8, v0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    move-object/from16 v14, p15

    iput-object v14, v0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    const/4 v15, 0x0

    iput-object v15, v0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    move-object/from16 v15, p14

    iput-object v15, v0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAuthentication()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public blacklist getAutofillDatatypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getCredentialFillInIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getEligibleReason()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return v0
.end method

.method public blacklist getFieldContent()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getFieldDialogPresentation(I)Landroid/widget/RemoteViews;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getFieldIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    :goto_0
    return-object v1
.end method

.method public blacklist getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlinePresentation;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getFieldPresentation(I)Landroid/widget/RemoteViews;
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getFieldValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object v0
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist setCredentialFillInIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    return-void
.end method

.method public blacklist setEligibleReasonReason(I)V
    .locals 0

    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dataset["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "noId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v1, ", fieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v1, ", fieldValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    if-eqz v1, :cond_4

    const-string v1, ", fieldContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const-string v1, ", fieldPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    const-string v1, ", fieldDialogPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    const-string v1, ", fieldInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    const-string v1, ", fieldInlineTooltipInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    const-string v1, ", fieldFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    const-string v1, ", hasPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    const-string v1, ", hasDialogPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_c

    const-string v1, ", hasInlinePresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_d

    const-string v1, ", hasInlineTooltipPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    if-eqz v1, :cond_e

    const-string v1, ", hasAuthentication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f

    const-string v1, ", hasAuthenticationExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    const-string v1, ", autofillDatatypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
