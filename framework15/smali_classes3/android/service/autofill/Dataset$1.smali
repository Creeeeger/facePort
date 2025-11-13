.class Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .locals 36

    move-object/from16 v0, p1

    const-class v1, Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    const-class v4, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    const-class v5, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InlinePresentation;

    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v7, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    sget-object v8, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    sget-object v9, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    sget-object v10, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    sget-object v11, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    sget-object v12, Landroid/service/autofill/Dataset$DatasetFieldFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    const-class v14, Landroid/content/ClipData;

    invoke-virtual {v0, v2, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ClipData;

    const-class v15, Landroid/content/IntentSender;

    invoke-virtual {v0, v2, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/IntentSender;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move/from16 v18, v2

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v19, Landroid/service/autofill/Dataset$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    move-object/from16 v20, v3

    move-object/from16 v0, v19

    move-object/from16 v19, v1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v19, Landroid/service/autofill/Presentations$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/service/autofill/Presentations$Builder;-><init>()V

    move-object/from16 v20, v19

    if-eqz v1, :cond_2

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/service/autofill/Presentations$Builder;->setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    goto :goto_1

    :cond_2
    move-object/from16 v0, v20

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Landroid/service/autofill/Presentations$Builder;->setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Landroid/service/autofill/Presentations$Builder;->setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Landroid/service/autofill/Presentations$Builder;->setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    :cond_5
    move-object/from16 v19, v1

    new-instance v1, Landroid/service/autofill/Dataset$Builder;

    move-object/from16 v20, v3

    invoke-virtual {v0}, Landroid/service/autofill/Presentations$Builder;->build()Landroid/service/autofill/Presentations;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/service/autofill/Presentations;)V

    move-object v0, v1

    nop

    :goto_2
    if-eqz v14, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1, v14}, Landroid/service/autofill/Dataset$Builder;->setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v30, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v31, v21

    check-cast v31, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v32, v21

    check-cast v32, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v33, v21

    check-cast v33, Landroid/widget/RemoteViews;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v34, v21

    check-cast v34, Landroid/widget/RemoteViews;

    if-ge v3, v1, :cond_7

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v26, v21

    goto :goto_4

    :cond_7
    const/16 v26, 0x0

    :goto_4
    if-ge v3, v1, :cond_8

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v27, v21

    goto :goto_5

    :cond_8
    const/16 v27, 0x0

    :goto_5
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v35, v21

    check-cast v35, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v31

    move-object/from16 v24, v32

    move-object/from16 v25, v33

    move-object/from16 v28, v35

    move-object/from16 v29, v34

    invoke-static/range {v21 .. v29}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$mcreateFromParcel(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v30

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v15}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    invoke-virtual {v0, v2}, Landroid/service/autofill/Dataset$Builder;->setCredentialFillInIntent(Landroid/content/Intent;)Landroid/service/autofill/Dataset$Builder;

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    invoke-virtual {v0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v4

    move-object/from16 v16, v0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/service/autofill/Dataset;->-$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method
