yii.confirm = function (massage, okCallback, cancelCallback) {
  swal(
    {
      title: massage,
      type: "warning",
      showCancelButton: true,
      closeOnConfirm: true,
      allowOutsideClick: true,
    },
    okCallback
  );
};
